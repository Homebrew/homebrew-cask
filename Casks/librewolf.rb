cask "librewolf" do
  arch = Hardware::CPU.intel? ? "" : "_aarch64_exp"

  if Hardware::CPU.intel?
    version "94.0.2-1,af4732e68ec6219135288af9fffdd920"
    sha256 "81395028781c1a59bf60d5e61b960cadf730282f8fe567340e68f8aeabe0b83f"
  else
    version "94.0.2-1,28eb3a54b3a320cdb09773e848e681d2"
    sha256 "8831d2e14383750597c477e2c95262d403bc25b15ed1f2ab423af28f3e37dfd3"
  end

  url "https://gitlab.com/librewolf-community/browser/macos/uploads/#{version.after_comma}/librewolf-#{version.before_comma}#{arch}.dmg",
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
    "~/Library/Application Support/LibreWolf",
    "~/Library/Caches/LibreWolf",
    "~/Library/Caches/LibreWolf Community",
    "~/Library/Preferences/io.gitlab.librewolf-community.librewolf.plist",
    "~/Library/Saved Application State/io.gitlab.librewolf-community.librewolf.savedState",
    "~/.librewolf",
  ]
end
