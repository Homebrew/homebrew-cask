cask "mono-mdk" do
  version "6.12.0.206"
  sha256 "80b0dbfa59ba9ed76dbf1393998e6a2ed2d1ccc8f5850c7a46fbe31a2aea88d8"

  url "https://download.mono-project.com/archive/#{version.major_minor_patch}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  name "Mono"
  desc "Open source implementation of Microsoft's .NET Framework"
  homepage "https://www.mono-project.com/"

  livecheck do
    url "https://www.mono-project.com/download/stable/"
    regex(%r{href=.*?/MonoFramework-MDK-(\d+(?:\.\d+)+).macos10.xamarin.universal\.pkg}i)
  end

  conflicts_with cask: "mono-mdk-for-visual-studio"

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: "com.xamarin.mono-*",
            delete:  [
              "/Library/Frameworks/Mono.framework/Versions/#{version.major_minor_patch}",
              "/private/etc/paths.d/mono-commands",
            ],
            rmdir:   [
              "/Library/Frameworks/Mono.framework",
              "/Library/Frameworks/Mono.framework/Versions",
            ]

  zap trash: [
    "~/.mono",
    "~/Library/Preferences/mono-sgen64.plist",
  ]

  caveats <<~EOS
    Installing #{token} removes mono and mono dependant formula binaries in
    /usr/local/bin and adds #{token} to /private/etc/paths.d/
    You may want to:

      brew unlink {formula} && brew link {formula}

    and/or remove /private/etc/paths.d/mono-commands
  EOS
end
