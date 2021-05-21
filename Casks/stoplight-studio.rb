cask "stoplight-studio" do
  version "2.3.0,5757.git-ca3ccc8"

  if Hardware::CPU.intel?
    sha256 "0cc6ea5228e9f15d8f3ce9a0627ba7e7fee243b1ae71073ee1a9b4edd72cf8ec"

    url "https://github.com/stoplightio/studio/releases/download/v#{version.before_comma}-stable.#{version.after_comma}/stoplight-studio-mac.dmg",
        verified: "github.com/stoplightio/studio/"
  else
    sha256 "c5a3cc25a01611e44801c39d89b836a3b6af29b647ffb5f272c5578dfa6972cd"

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
