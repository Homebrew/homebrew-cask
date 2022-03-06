cask "librewolf" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  if Hardware::CPU.intel?
    version "97.0.2,1,fecd166b8f84dc13ceba6acfc77797fe"
    sha256 "06ce64a4f1d23f035cf4831375aee305f12ebc9dfc7cd0bdad0524593d86a80f"
  else
    version "97.0.2,1,05d7686862baa8f39bfab1fbc5db6a9b"
    sha256 "c005d33373dddb6791d1aaacde0a01bf8e9ee798bd7df0aa3fd7e4ac8af21b49"
  end

  url "https://gitlab.com/librewolf-community/browser/macos/uploads/#{version.csv.third}/librewolf-#{version.csv.first}-#{version.csv.second}.en-US.mac.#{arch}.dmg",
      verified: "gitlab.com/librewolf-community/browser/macos/"
  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf.net/"

  livecheck do
    url "https://gitlab.com/api/v4/projects/13853965/releases"
    regex(%r{/(\w+)/librewolf[._-](\d+(?:\.\d+)+)-(\d+)\.en-US\.mac\.#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[2]},#{match[0]}"
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
