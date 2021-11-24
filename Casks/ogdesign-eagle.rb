cask "ogdesign-eagle" do
  arch = Hardware::CPU.intel? ? "build" : "M1-build"

  version "2.0,39"

  url "https://eagleapp.s3-accelerate.amazonaws.com/releases/Eagle-#{version.before_comma}-#{arch}#{version.after_comma}.dmg",
      verified: "eagleapp.s3-accelerate.amazonaws.com/"
  if Hardware::CPU.intel?
    sha256 "833d15f3431e26b70263ef8ab73bee47eb91ee31cf74a625579cce9563ba58bb"
  else
    sha256 "c0de55e6be531c99a653ccc4b9e61a8bca49fa8001637106b064b99150fb80a9"
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
