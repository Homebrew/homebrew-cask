cask "cpu-info" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "53edcac5bbfca3ee1b5ebcd89fa2f43d6ba081cf23ca177cb75e425257c95c5f",
         intel: "f9e7e1511f7a3113babf8f2760f7f44cf244a7953ac47398ec5172cd84226c97"

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
