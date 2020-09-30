cask "mono-mdk" do
  version "6.12.0.100"
  sha256 "b08afaf9f315731bc820edf114a9a0681845d1f953aa8ee7f35b01aa28b26156"

  url "https://download.mono-project.com/archive/#{version.major_minor_patch}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast "https://www.mono-project.com/download/stable/"
  name "Mono"
  homepage "https://www.mono-project.com/"

  conflicts_with cask: "mono-mdk-for-visual-studio"

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
