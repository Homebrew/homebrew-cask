cask "omniplan" do
  if MacOS.version <= :el_capitan
    version "3.7.3"
    sha256 "1a3ab3a1ea22bdbdf9c1afda8cafc9a2fdf60cb4414f142b621c8758f81720bd"
    url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniPlan-#{version}.dmg"
  elsif MacOS.version <= :sierra
    version "3.10.4"
    sha256 "a30728e72ae970dbf37b2ef9942a6b54267aa3456288dcc1815f20b44667e9e5"
    url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniPlan-#{version}.dmg"
  elsif MacOS.version <= :high_sierra
    version "3.13"
    sha256 "82e0d7db2626d751f93f97d80dc032e4bc01bba1e05ea52c553e4771c8cfeec5"
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniPlan-#{version}.dmg"
  elsif MacOS.version <= :mojave
    version "4.2.7"
    sha256 "157cbea0055a87b2c078c336ea9f5d9aaa9caa242c92265f410e5d7ac534883f"
    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniPlan-#{version}.dmg"
  else
    version "4.4"
    sha256 "24279e564bfb8c4c808007041c0334f209334d9d0aa83efd406a910562846b48"
    url "https://downloads.omnigroup.com/software/macOS/11/OmniPlan-#{version}.dmg"
  end

  name "OmniPlan"
  desc "Project planning and management software"
  homepage "https://www.omnigroup.com/omniplan/"

  livecheck do
    url "https://www.omnigroup.com/download/latest/omniplan/"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/omniplan3"

  app "OmniPlan.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omniplan#{version.major}.sfl*",
    "~/Library/Application Scripts/com.omnigroup.OmniPlan#{version.major}",
    "~/Library/Containers/com.omnigroup.OmniPlan#{version.major}",
    "~/Library/Preferences/com.omnigroup.OmniPlan#{version.major}.plist",
  ]
end
