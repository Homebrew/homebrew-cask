cask "stoplight-studio" do
  version "2.3.0,6547.git-2cf5b62"

  if Hardware::CPU.intel?
    sha256 "9ee898c6d1b440fb58c7b568c8f31c3a5923425b6a70c7c4e8f8be1f519cb2e7"

    url "https://github.com/stoplightio/studio/releases/download/v#{version.before_comma}-stable.#{version.after_comma}/stoplight-studio-mac.dmg",
        verified: "github.com/stoplightio/studio/"
  else
    sha256 "4e520f53154e1195404dec8b49b6196fef70fc96a1c4766e335cbca54e5ba027"

    url "https://github.com/stoplightio/studio/releases/download/v#{version.before_comma}-stable.#{version.after_comma}/stoplight-studio-mac-arm64.dmg",
        verified: "github.com/stoplightio/studio/"
  end

  name "Stoplight Studio"
  desc "Editor for designing and documenting APIs"
  homepage "https://stoplight.io/studio/"

  livecheck do
    url "https://github.com/stoplightio/studio/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)+)[._-]stable[._-]([^/]+)/stoplight[._-]studio[._-]mac\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Stoplight Studio.app"
end
