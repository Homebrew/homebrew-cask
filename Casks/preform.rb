cask "preform" do
  version "3.13.0,811"
  sha256 "ce9829ebaf02b27dfddefb88d688f957aed07e9698460cd6717665153a623b88"

  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.before_comma}/PreForm_#{version.before_comma}_release__build_#{version.after_comma}.dmg",
      verified: "s3.amazonaws.com/FormlabsReleases/"
  name "PreForm"
  desc "3D printing setup, management, and monitoring"
  homepage "https://formlabs.com/tools/preform/"

  livecheck do
    url "https://formlabs.com/download-preform-mac/"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/PreForm_(\d+(?:\.\d+)*)_release__build_(\d+)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "PreForm.app"
end
