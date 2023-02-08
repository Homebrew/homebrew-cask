cask "accord" do
  version "1.6.2"
  sha256 "6fec3c927ce1c874f02e10840359ef5e1dca80c657727a6db243fb3be07128b9"

  url "https://github.com/evelyneee/accord/releases/download/v.#{version}/Accord.zip"
  name "accord"
  desc "Discord client written in Swift for modern Macs"
  homepage "https://github.com/evelyneee/accord"

  livecheck do
    url :url
    regex(%r{href=.*?/tag/v?\.?(\d+(?:\.\d+)+)["' >]}i)
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Accord.app"

  zap trash: [
    "~/Library/Application Scripts/red.evelyn.accord",
    "~/Library/Containers/red.evelyn.accord",
  ]
end
