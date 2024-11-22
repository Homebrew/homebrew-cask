cask "intellij-idea@eap" do
  arch arm: "-aarch64"

  version "2024.3.1,243.22562.13"
  sha256 arm:   "f1636583793c80a20bbd5bd4825c49d6f7cfb111823193fadc7451f52402d8ff",
         intel: "c60c662bf8cfd5356473e6c4cdc9baabeeb6668525d13b3ebee3d37c0c3bb2aa"

  url "https://download.jetbrains.com/idea/ideaIU-#{version.csv.second}#{arch}.dmg"
  name "IntelliJ IDEA EAP"
  desc "IntelliJ IDEA Early Access Program"
  homepage "https://www.jetbrains.com/idea/nextversion"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=IIU&release.type=eap"
    strategy :json do |json|
      json["IIU"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end

  auto_updates true
  conflicts_with cask: "intellij-idea"
  depends_on macos: ">= :high_sierra"

  app "IntelliJ IDEA.app"
  binary "#{appdir}/IntelliJ IDEA.app/Contents/MacOS/idea"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "idea") }.each do |path|
      if File.readable?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/IntelliJIdea#{version.csv.first}",
    "~/Library/Caches/JetBrains/IntelliJIdea#{version.csv.first}",
    "~/Library/Logs/JetBrains/IntelliJIdea#{version.csv.first}",
    "~/Library/Preferences/com.jetbrains.intellij.plist",
    "~/Library/Preferences/IntelliJIdea#{version.csv.first}",
    "~/Library/Preferences/jetbrains.idea.*.plist",
    "~/Library/Saved Application State/com.jetbrains.intellij.savedState",
  ]
end
