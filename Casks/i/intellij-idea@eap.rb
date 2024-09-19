cask "intellij-idea@eap" do
  arch arm: "-aarch64"

  version "2024.3,243.15521.24"
  sha256 arm:   "9d69e5ed5acc589f869822bae9fe07ffcc87e40b8e8faf71b862da5a9334eb85",
         intel: "e3e76791d9e67026f7d63366ae1cb6fe34809bbc9668fe5db1ca4bb2e7863059"

  url "https://download.jetbrains.com/idea/ideaIU-#{version.csv.second}#{arch}.dmg"
  name "IntelliJ IDEA EAP"
  desc "IntelliJ IDEA Early Access Program"
  homepage "https://www.jetbrains.com/idea/nextversion"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=IIU&release.type=eap"
    strategy :json do |json|
      json["IIU"].map do |release|
        "#{release["version"]},#{release["build"]}"
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
