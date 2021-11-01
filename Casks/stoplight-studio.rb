cask "stoplight-studio" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm64"

  version "2.3.0,6547.git-2cf5b62"

  url "https://github.com/stoplightio/studio/releases/download/v#{version.before_comma}-stable.#{version.after_comma}/stoplight-studio-#{arch}.dmg",
      verified: "github.com/stoplightio/studio/"
  if Hardware::CPU.intel?
    sha256 "9ee898c6d1b440fb58c7b568c8f31c3a5923425b6a70c7c4e8f8be1f519cb2e7"
  else
    sha256 "4e520f53154e1195404dec8b49b6196fef70fc96a1c4766e335cbca54e5ba027"
  end

  name "Stoplight Studio"
  desc "Editor for designing and documenting APIs"
  homepage "https://stoplight.io/studio/"

  livecheck do
    url "https://github.com/stoplightio/studio/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)+)[._-]stable[._-]([^/]+)/stoplight[._-]studio[._-]#{arch}\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "Stoplight Studio.app"
end
