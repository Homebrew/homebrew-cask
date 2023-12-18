cask "rustrover" do
  arch arm: "-aarch64"

  version "2023.3,233.11799.284"
  sha256 arm:   "beff1ad500e58cb150ef05ab66de69dab2b609ff7da836a4ee04d701d9d41e76",
         intel: "2ec2563a94abf3b873709c27cb81692fb0fbff44ee42b275cc38d0dc3c74e7af"

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
