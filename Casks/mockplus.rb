cask "mockplus" do
  version "3.6.1.6"
  sha256 "9f23c99b2e0025e6cab504538fe50da55dd6cf8478d5f4bbca920f3567344f3c"

  url "https://mockplus-static.s3.amazonaws.com/software/macos/Mockplus_v#{version}_auto.dmg",
      verified: "mockplus-static.s3.amazonaws.com/"
  name "Mockplus"
  name "摩客"
  homepage "https://www.mockplus.com/"

  livecheck do
    url "https://www.mockplus.com/download/mockplus-rp"
    # Needs macOS user agent.
    regex(%r{href=.*?/MockplusClassic_v?(\d+(?:\.\d+)*)_auto\.dmg}i)
  end

  app "Mockplus Classic.app"
end
