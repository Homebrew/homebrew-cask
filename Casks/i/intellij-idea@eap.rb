cask "intellij-idea@eap" do
  arch arm: "-aarch64"

  version "2025.1,251.23536.34"
  sha256 arm:   "094eaf20d5d955ebf67c2f62207bc3a5dd7d4363417421387f1e652c1219c3d6",
         intel: "8d9bf2e0c3424de60ca9de7a1edc240506aac41054b1278910732898fd980521"

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

  app "IntelliJ IDEA #{version.csv.first} EAP.app"
  binary "#{appdir}/IntelliJ IDEA #{version.csv.first} EAP.app/Contents/MacOS/idea"

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
