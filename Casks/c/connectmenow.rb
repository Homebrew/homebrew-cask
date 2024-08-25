cask "connectmenow" do
  arch arm: "arm64", intel: "x86-64"

  version "4.0.18"
  sha256 arm:   "001648f6418d472be39900af2decf4d9687c2992374312696073c159faa5dbbe",
         intel: "ed566ca22643d7d4bd2e2f22488a41b99ae3eb3f71e5bf8af97c4b959da901c1"

  url "https://www.tweaking4all.com/downloads/network/ConnectMeNow#{version.major}-v#{version}-macOS-#{arch}.dmg"
  name "ConnectMeNow"
  desc "Mount network shares quick and easy"
  homepage "https://www.tweaking4all.com/os-tips-and-tricks/macosx-tips-and-tricks/connectmenow-v#{version.major}/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/ConnectMeNow#{version.major}[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]#{arch}\.dmg}i)
  end

  app "ConnectMeNow#{version.major}.app"

  zap trash: "~/Library/Preferences/com.Tweaking4All.ConnectMeNow#{version.major}.*"
end
