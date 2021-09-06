cask "stoplight-studio" do
  version "2.3.0,5931.git-67616e9"

  if Hardware::CPU.intel?
    sha256 "aac31ad905e62e0fcdb3fdb24f54702be128105d9a45a4a7c81efac9f993a829"

    url "https://github.com/stoplightio/studio/releases/download/v#{version.before_comma}-stable.#{version.after_comma}/stoplight-studio-mac.dmg",
        verified: "github.com/stoplightio/studio/"
  else
    sha256 "75dfef898970ddc78200b10a7e1e7187fd4106826a7fc64b9146b02aec041acf"

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
