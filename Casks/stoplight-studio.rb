cask "stoplight-studio" do
  version "2.3.0,5860.git-a1f1a82"

  if Hardware::CPU.intel?
    sha256 "57f030300b7d53dc928c2ff957402bf05a8aeaaaa96a32aefdcbfdade182d231"

    url "https://github.com/stoplightio/studio/releases/download/v#{version.before_comma}-stable.#{version.after_comma}/stoplight-studio-mac.dmg",
        verified: "github.com/stoplightio/studio/"
  else
    sha256 "47365408fcc1ca0657760d088856eaf3b5d72e4be267ea6e138edcd8806c0ccd"

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
