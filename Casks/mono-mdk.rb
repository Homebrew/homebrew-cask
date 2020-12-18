cask "mono-mdk" do
  version "6.12.0.107"
  sha256 "0f26106b1b5575c0e6f5d7c68b79c23b3975b0b7fc8230052736ad8e04177f64"

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
