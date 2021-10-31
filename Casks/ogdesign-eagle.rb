cask "ogdesign-eagle" do
  arch = Hardware::CPU.intel? ? "build" : "M1-build"

  version "2.0,38"

  url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version.before_comma}-#{arch}#{version.after_comma}.dmg",
      verified: "eagleapp.s3-accelerate.amazonaws.com/"
  if Hardware::CPU.intel?
    sha256 "d0d7a1394f027f4f1b682fb8f11bec5b8e54b0600dfb3db52c1c116a78c1f702"
  else
    sha256 "86ec5ef37548b7191c622bb7177a7518e68b709403ddfa7ca5483119c94767e1"
  end

  name "Eagle"
  desc "Organize all your reference images in one place"
  homepage "https://eagle.cool/macOS"

  livecheck do
    url "https://eagle.cool/check-for-update"
    regex(/Eagle[._-]v?(\d+(?:\.\d+)+)-#{arch}(\d+(?:\.\d+)*)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Eagle.app"
end
