cask "preform" do
  version "3.16.0,35_6280"
  sha256 "8972bdf94e956f9855245cf91b7e3037364c53c68986bf4c4ce2c7e9d3d84405"

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
