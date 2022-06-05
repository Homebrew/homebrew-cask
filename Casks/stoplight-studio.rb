cask "stoplight-studio" do
  arch = Hardware::CPU.intel? ? "mac" : "mac-arm64"

  version "2.8.1,7704.git-1ff85af"

  if Hardware::CPU.intel?
    sha256 "98299d040d0777bd1caf29e71f8ad632381a875d2581e574beea7ef1e6dbc0af"
  else
    sha256 "f710ade089fe9645c7c56cdd00ed7b61ba750417b27ee5dbe7f9af02d6535c3b"
  end

  url "https://github.com/stoplightio/studio/releases/download/v#{version.csv.first}-stable.#{version.csv.second}/stoplight-studio-#{arch}.dmg",
      verified: "github.com/stoplightio/studio/"
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
