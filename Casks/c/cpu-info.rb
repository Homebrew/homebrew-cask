cask "cpu-info" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "a2c3df01a3a6f9d59fff205ffbdef463fd27609dde12b38f4cfcc975ad0725c0",
         intel: "cb52d06f6cb9878a00d70f9593d2c8e4fc8e243085a5aec12b36c1b1e7bfe41d"

  url "https://github.com/kamgurgul/cpu-info/releases/download/jvm-#{version}/CPU-Info-macos-#{arch}-#{version}.dmg"
  name "CPU Info"
  desc "Provides information about device hardware and software"
  homepage "https://github.com/kamgurgul/cpu-info"

  livecheck do
    url :url
    regex(/^jvm[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :monterey"

  app "CPU-Info.app"

  zap trash: "~/Library/Preferences/CPU-Info"
end
