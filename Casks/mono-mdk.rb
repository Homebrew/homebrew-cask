cask "mono-mdk" do
  version "6.12.0.179"
  sha256 "0794cfc74474b2aa1adb8c8b7139857f1d09a44862ed9f8f3ae88f14b50f2d61"

  url "https://download.mono-project.com/archive/#{version.major_minor_patch}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  name "Mono"
  desc "Open source implementation of Microsoft's .NET Framework"
  homepage "https://www.mono-project.com/"

  livecheck do
    url "https://www.mono-project.com/download/stable/"
    regex(%r{href=.*?/MonoFramework-MDK-(\d+(?:\.\d+)+).macos10.xamarin.universal\.pkg}i)
  end

  conflicts_with cask:    "homebrew/cask-versions/mono-mdk-for-visual-studio",
                 formula: "mono"

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall delete:  [
    "/Library/Frameworks/Mono.framework/Versions/#{version.major_minor_patch}",
    "/private/etc/paths.d/mono-commands",
  ],
            pkgutil: "com.xamarin.mono-*",
            rmdir:   [
              "/Library/Frameworks/Mono.framework/Versions",
              "/Library/Frameworks/Mono.framework",
            ]

  caveats <<~EOS
    Installing #{token} removes mono and mono dependant formula binaries in
    /usr/local/bin and adds #{token} to /private/etc/paths.d/
    You may want to:

      brew unlink {formula} && brew link {formula}

    and/or remove /private/etc/paths.d/mono-commands
  EOS
end
