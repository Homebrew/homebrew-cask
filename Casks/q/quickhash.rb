cask "quickhash" do
  version "3.3.4,2510"
  sha256 "d5b73524b0d62a7f100f7a6f976eaad98968f03f20f6d6b6c28040f9c255a884"

  url "https://www.quickhash-gui.org/download/quickhash-gui-v#{version.csv.first.dots_to_hyphens}-apple-osx/?wpdmdl=#{version.csv.second}"
  name "Quickhash"
  desc "Data hashing tool"
  homepage "https://www.quickhash-gui.org/"

  livecheck do
    url "https://www.quickhash-gui.org/downloads/"
    regex(%r{/quickhash[._-](?:gui[._-])?v?(\d+(?:-\d+)+)[._-]apple[._-]osx/\?wpdmdl=(\d+)}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0].tr("-", ".")},#{match[1]}" }
    end
  end

  app "Quickhash-GUI.app"
end
