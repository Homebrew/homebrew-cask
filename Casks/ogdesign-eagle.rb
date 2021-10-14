cask "ogdesign-eagle" do
  arch = Hardware::CPU.intel? ? "build" : "M1-build"

  version "2.0,37"

  url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version.before_comma}-#{arch}#{version.after_comma}.dmg",
      verified: "eagleapp.s3-accelerate.amazonaws.com/"
  if Hardware::CPU.intel?
    sha256 "de2035bb67ed397e278f8accd841f3a0ae9f6a5d802d1a9f6a7536a999beca26"
  else
    sha256 "bc6315aa3092412ecad2093fbffa5e6fad7ccb37cb1f556725c04e236a015773"
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
