cask "preform" do
  version "3.15.2,26_5009"
  sha256 "b5d064155e7e7fbabf538f6415bd24ce386c57adbf9d48c7259649665f4f5ea0"

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
