cask "fvim" do
  version "0.3.549,ee4316c"
  sha256 "2e08052e16100189448f938f0f87dbd0cd6e81c20fcccb11ac70bc39df5bc412"

  url "https://github.com/yatli/fvim/releases/download/v#{version.csv.first}%2B#{version.csv.second}/fvim-osx-x64-v0.3.548+g2e4087d-2-g#{version.csv.second}.zip"
  name "FVim"
  desc "GUI for the Neovim text editor"
  homepage "https://github.com/yatli/fvim"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)(?:[+-](g?\h+))?$/i)
    strategy :github_latest do |json, regex|
      json["tag_name"]&.scan(regex)&.map do |match|
        match[1].present? ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  app "FVim.app"

  zap trash: "~/Library/Saved Application State/com.fvim.www.savedState"

  caveats do
    requires_rosetta
  end
end
