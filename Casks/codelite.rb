cask "codelite" do
  version "15.0.6"
  sha256 "0a9eda4a54a9937b2c47cc61cba2d5a4330adb80d0e82689be1c92eb3af35b8a"

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
