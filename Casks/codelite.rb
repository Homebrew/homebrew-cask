cask "codelite" do
  version "15.0.0"
  sha256 "4757fb3a16751ab541d53d07976d4ca59257bf77f94d7e96b86f64f415a7c199"

  url "https://downloads.codelite.org/codelite/#{version}/codelite.app.tar.gz"
  name "CodeLite"
  desc "IDE for C, C++, PHP and Node.js"
  homepage "https://codelite.org/"

  livecheck do
    url "https://downloads.codelite.org/"
    strategy :page_match do |page|
      match = page.match(/CodeLite\s*(\d+\.\d+)((?:\.\d+)*)\s*-\s*Stable\s*Release/i)
      "#{match[1]}#{match[2].presence || ".0"}"
    end
  end

  app "codelite.app"

  zap trash: [
    "~/Library/Application Support/codelite",
    "~/Library/Preferences/codelite.plist",
  ]
end
