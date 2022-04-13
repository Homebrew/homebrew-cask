cask "fvim" do
  version "0.3.530,gc43c0c6"
  sha256 "996ce0e16566bca7b1a3c533eed0a0effc7273254d35ce80416cd882078da9b0"

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
