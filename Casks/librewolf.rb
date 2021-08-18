cask "librewolf" do
  if Hardware::CPU.intel?
    version "91.0.1-1,9acc00a3c814692adc2dad956ac820c4"
    sha256 "42f1ced7dfc361b7e97e48def557a047a6fe04241d741f81db28ceb0969fda59"

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
    version "91.0.1-1,026da8f410566a67867146595ba34418"
    sha256 "938f3c8ee8677206e111e44c742196899ad151d4f816f9affd0351913b440b55"

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
