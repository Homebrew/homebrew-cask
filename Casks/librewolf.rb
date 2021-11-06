cask "librewolf" do
  arch = Hardware::CPU.intel? ? "" : "_aarch64_exp"

  if Hardware::CPU.intel?
    version "94.0.1-1,0c876ea262cdcb0e0ca66008910fd365"
    sha256 "e1ecc2241143198a0d28fe1c5b7c747de527af4eb87b4a059fd8956f639017b0"
  else
    version "94.0.1-1,9c7169696cb8e2648963b3be645243e4"
    sha256 "8d206af66774268a2429995d423c108cb57f566878b591d9fda7fd5b4a96f48d"
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
