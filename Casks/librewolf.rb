cask "librewolf" do
  if Hardware::CPU.intel?
    version "89.0.2-1,03e3475f56f3aa4802e11cdbc2518c89"
    sha256 "b81cb7c8ab0b1cc92282158361da460fa80727cf6a0b442dab6b4f9e4276e315"

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
    version "89.0.2-1,3e7b90fed6a814da82b30cb80b61e9c1"
    sha256 "20d6d2c6262ff95466f9c19e65fc2a352eb6b213e746ab585db2cf5e80bc7357"

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
