cask "fvim" do
  version "0.3.548,g2e4087d"
  sha256 "a7b17c432ce4b08130c31bd3b3b3fafeaad72a42ac32332833b4d2a7b06000de"

  url "https://github.com/yatli/fvim/releases/download/v#{version.csv.first}%2B#{version.csv.second}/fvim-osx-x64-v0.3.547+g8d9defc-1-#{version.csv.second}.zip"
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
end
