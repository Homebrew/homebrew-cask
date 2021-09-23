cask "far2l" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.3.210921-716b329,2021-09-21_alpha"

  if MacOS.version <= :mojave
    sha256 "efcf4b9cc19e1a0fce2e2526b0e1549f95a2ee1a1f532a0056daf575311f7935"

    url "https://github.com/elfmz/far2l/releases/download/v#{version.after_comma}/far2l-#{version.before_comma}-alpha-MacOS-10.11.dmg"
  else
    sha256 "b78ee531f31ad6174a6211ee3841eff929089fca215c26ffb47c5913ed66d19b"

    url "https://github.com/elfmz/far2l/releases/download/v#{version.after_comma}/far2l-#{version.before_comma}-alpha-MacOS-10.15.dmg"
  end

  name "far2l"
  desc "Unix fork of FAR Manager v2"
  homepage "https://github.com/elfmz/far2l"

  livecheck do
    url "https://github.com/elfmz/far2l/releases"
    regex(%r{/v(.*)/far2l-(.*)-alpha-MacOS-10\.(11|15)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :el_capitan"

  app "far2l.app"

  zap trash: "~/Library/Saved Application State/com.far2l.savedState"
end
