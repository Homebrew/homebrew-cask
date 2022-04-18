cask "codelite" do
  version "16.0.0"
  sha256 "42906c5ffbf4d206426aee4f9f7cf70c51e258e5131248e8467e611abdbeb030"

  url "https://downloads.codelite.org/codelite/#{version}/codelite.app.tar.gz"
  name "CodeLite"
  desc "IDE for C, C++, PHP and Node.js"
  homepage "https://codelite.org/"

  livecheck do
    url "https://downloads.codelite.org/"
    strategy :page_match do |page|
      match = page.match(/CodeLite\s*(\d+\.\d+)((?:\.\d+)*)\s*-\s*Stable\s*Release/i)
      next if match.blank?

      "#{match[1]}#{match[2].presence || ".0"}"
    end
  end

  app "codelite.app"

  zap trash: [
    "~/Library/Application Support/codelite",
    "~/Library/Preferences/codelite.plist",
  ]
end
