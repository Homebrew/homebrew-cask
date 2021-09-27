cask "librewolf" do
  if Hardware::CPU.intel?
    version "92.0.1-2,53a2d9b4b987e959a94b0912c51b1728"
    sha256 "b14fbd32c180da1f064582718bec24166b0ac4e9455f348dd9bf99cfacaa0d33"

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
    version "92.0.1-2,c04fd1ff19d40ac70b7bb235c787bdd5"
    sha256 "495e2dfdaed820fb5850c016c69c702ef2b5320a82401651653c84f4d7961c81"

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
