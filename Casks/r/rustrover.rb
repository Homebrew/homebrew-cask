cask "rustrover" do
  arch arm: "-aarch64"

  version "2023.3,233.8264.32"
  sha256 arm:   "aeac92d59490df5453b4a8532e19ad8a3f5eda13f67b94b671bd3d11be1875de",
         intel: "a2251203fa0a576781af51088dd9030f9e5ebaaa76301ea6e4989e8fc3ec1e08"

  url "https://download.jetbrains.com/rustrover/RustRover-#{version.csv.second}#{arch}.dmg"
  name "RustRover"
  desc "Rust IDE"
  homepage "https://www.jetbrains.com/rust/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=RR&latest=true&type=eap"
    strategy :json do |json|
      json["RR"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "RustRover #{version.before_comma} EAP.app", target: "RustRover.app"

  uninstall_postflight do
    ENV["PATH"].split(File::PATH_SEPARATOR).map { |path| File.join(path, "rover") }.each do |path|
      if File.readable?(path) &&
         File.readlines(path).grep(/# see com.intellij.idea.SocketLock for the server side of this interface/).any?
        File.delete(path)
      end
    end
  end

  zap trash: [
    "~/Library/Application Support/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Caches/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Logs/JetBrains/RustRover#{version.major_minor}",
    "~/Library/Preferences/com.jetbrains.rustrover-EAP.plist",
    "~/Library/Saved Application State/com.jetbrains.rustrover-EAP.SavedState",
  ]
end
