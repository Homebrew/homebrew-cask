cask "preform" do
  version "3.15.3,29_5619"
  sha256 "feff89e429a053e86a10c8b7126e789eab2644dc9631db7f0e8da6f811453477"

  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.before_comma}/PreForm_mac_#{version.before_comma}_release_releaser_#{version.after_comma}.dmg",
      verified: "s3.amazonaws.com/FormlabsReleases/"
  name "PreForm"
  desc "3D printing setup, management, and monitoring"
  homepage "https://formlabs.com/tools/preform/"

  livecheck do
    url "https://formlabs.com/download-preform-mac/"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/PreForm_mac_(\d+(?:\.\d+)*)_release_releaser_(\d+(?:[._-]\d+)*)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "PreForm.app"
end
