cask "codelite" do
  arch arm: "arm64", intel: "x86_64"

  version "17.0.0"
  sha256 arm:   "61e3cdfdbaa290feb9e35eab31375b1cb9af0ba1f7e4d33198fd9e293f636b5c",
         intel: "42dd6bf46159c687a5739a3bbfaf925bcb16d27b52e6ff237f14f06f1221bbc9"

  url "https://downloads.codelite.org/codelite/#{version}/codelite-#{arch}.app.tar.gz"
  name "CodeLite"
  desc "IDE for C, C++, PHP and Node.js"
  homepage "https://codelite.org/"

  livecheck do
    url "https://downloads.codelite.org/"
    regex(/CodeLite\s*(\d+\.\d+)((?:\.\d+)*)\s*-\s*Stable/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
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
