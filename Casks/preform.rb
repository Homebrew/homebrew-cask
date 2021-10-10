cask "preform" do
  version "3.19.1,62_11041"
  sha256 "b534ab51043393c149a84e26d252a1e9a259a4652d30a6c3583ce8b021a5639a"

  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.before_comma}/PreForm_mac_#{version.before_comma}_release_releaser_#{version.after_comma}.dmg",
      verified: "s3.amazonaws.com/FormlabsReleases/"
  name "PreForm"
  desc "3D printing setup, management, and monitoring"
  homepage "https://formlabs.com/tools/preform/"

  livecheck do
    url "https://formlabs.com/download-preform-mac/"
    strategy :page_match do |page|
      match = page.match(%r{/PreForm_mac_(\d+(?:\.\d+)*)_release_releaser_(\d+(?:[._-]\d+)*)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "PreForm.app"
end
