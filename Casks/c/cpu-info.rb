cask "cpu-info" do
  arch arm: "arm64", intel: "x64"

  version "1.11.0"
  sha256 arm:   "2b581bc563dd2c334ee86c9d9c7d06b2172f86d76813346e7e200542d56be202",
         intel: "ee30670f60083915b138c7f3f641711c1eb7279fe39e14c2eddba5dbec753c65"

  url "https://github.com/kamgurgul/cpu-info/releases/download/jvm-#{version}/CPU-Info-macos-#{arch}-#{version}.dmg"
  name "CPU Info"
  desc "Provides information about device hardware and software"
  homepage "https://github.com/kamgurgul/cpu-info"

  livecheck do
    url :url
    regex(/^jvm[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  app "CPU-Info.app"

  zap trash: "~/Library/Preferences/CPU-Info"
end
