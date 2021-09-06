cask "far2l" do
  if MacOS.version < :catalina
    version "2.3.21063-fa68e35,2021-06-30_alpha"
    url "https://github.com/elfmz/far2l/releases/download/v#{version.after_comma}/far2l-#{version.before_comma}-alpha-MacOS-10.11.dmg"
    sha256 "ecfc1daa71d9f7e5188a9ba3249981efc1d1522a817c6059a809b161d081cae3"
  else
    version "2.3.210630-fa68e350,2021-06-30_alpha"
    url "https://github.com/elfmz/far2l/releases/download/v#{version.after_comma}/far2l-#{version.before_comma}-alpha-MacOS-10.15.dmg"
    sha256 "dce76a889cfaef7c6bd056f41419aafb53b8753685a0258ba72e3a1a31372ec6"
  end

  name "far2l"
  desc "Unix port of FAR v2"
  homepage "https://github.com/elfmz/far2l"

  livecheck do
    skip "Livecheck doesn't work with comma"
  end

  depends_on macos: ">= :yosemite"

  app "far2l.app"

  zap trash: "~/Library/Saved Application State/com.far2l.savedState"
end
