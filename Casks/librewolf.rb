cask "librewolf" do
  arch = Hardware::CPU.intel? ? "" : "_aarch64_exp"

  if Hardware::CPU.intel?
    version "95.0-2,7972ac43891a576a17b90753be3694a0"
    sha256 "c9b996797ba4aa8c38bc058d47504e78f20f8ec1dc7bbc98185c67e535bed736"
  else
    version "95.0-2-eeb57ce10660d7e33a18898609873bcb"
    sha256 "1a2813330676f4fee597d393d6ae3cfe9e68225787abcb3095ee6d2a163b6e21"
  end

  url "https://gitlab.com/librewolf-community/browser/macos/uploads/#{version.csv.second}/librewolf-#{version.csv.first}#{arch}.dmg",
      verified: "gitlab.com/librewolf-community/browser/macos/"
  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf.net/"

  livecheck do
    url "https://gitlab.com/api/v4/projects/13853965/releases"
    regex(%r{/(\w+\d+)/librewolf[._-](\d+(?:\.\d+)+(?:-\d+)?)#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  app "LibreWolf.app"

  zap trash: [
    "~/.librewolf",
    "~/Library/Application Support/LibreWolf",
    "~/Library/Caches/LibreWolf",
    "~/Library/Caches/LibreWolf Community",
    "~/Library/Preferences/io.gitlab.librewolf-community.librewolf.plist",
    "~/Library/Saved Application State/io.gitlab.librewolf-community.librewolf.savedState",
  ]
end
