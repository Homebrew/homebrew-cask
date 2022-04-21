cask "fvim" do
  version "0.3.531,g119a455"
  sha256 "505f3f3db3cb2841bb8fa3ff19c1c2796ddf4d911118d7737bc064696d6d711b"

  url "https://github.com/yatli/fvim/releases/download/v#{version.csv.first}%2B#{version.csv.second}/fvim-osx-v#{version.csv.first}+#{version.csv.second}.zip"
  name "FVim"
  desc "GUI for the Neovim text editor"
  homepage "https://github.com/yatli/fvim"

  livecheck do
    url :url
    strategy :github_latest do |page|
      match = page.match(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)\+(g?\h+)["' >]}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "FVim.app"

  zap trash: "~/Library/Saved Application State/com.fvim.www.savedState"
end
