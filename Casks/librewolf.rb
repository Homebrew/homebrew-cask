cask "librewolf" do
  if Hardware::CPU.intel?
    version "90.0.1-1,1bc4cbf857cd9302afe8c8fb97f61179"
    sha256 "6b6efe2d42d74e9d1b26e5af036d2d8ec431e50c2c94aa987a1b14c1e9b3f257"

    url "https://gitlab.com/librewolf-community/browser/macos/uploads/#{version.after_comma}/librewolf-#{version.before_comma}.dmg",
        verified: "gitlab.com/librewolf-community/browser/macos/"

    livecheck do
      url "https://gitlab.com/api/v4/projects/13853965/releases"
      regex(%r{"url"\s*:\s*"[^"]*?/(\h+)/librewolf[._-]v?(\d+(?:\.\d+)+(?:-\d+)?)(?:[._-]x86)?\.dmg"}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map do |match|
          "#{match[1]},#{match[0]}"
        end
      end
    end
  else
    version "90.0.1-1,f99ba3c60305c52345721507bf3545d4"
    sha256 "1c2da9ed78740ea35e67feb6dee10aea3a81a6abacb1b2da7bcc31894c078bac"

    url "https://gitlab.com/librewolf-community/browser/macos/uploads/#{version.after_comma}/librewolf-#{version.before_comma}_aarch64_exp.dmg",
        verified: "gitlab.com/librewolf-community/browser/macos/"

    livecheck do
      url "https://gitlab.com/api/v4/projects/13853965/releases"
      regex(%r{"url"\s*:\s*"[^"]*?/(\h+)/librewolf[._-]v?(\d+(?:\.\d+)+(?:-\d+)?)[._-]aarch64(?:[._-]exp)?\.dmg"}i)
      strategy :page_match do |page, regex|
        page.scan(regex).map do |match|
          "#{match[1]},#{match[0]}"
        end
      end
    end
  end

  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf-community.gitlab.io/"

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
