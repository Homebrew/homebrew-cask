cask "dotnet-sdk" do
  if MacOS.version <= :sierra
    version "2.2.402,7430e32b-092b-4448-add7-2dcf40a7016d:1076952734fbf775062b48344d1a1587"
    sha256 "e74d816bc034d0fcdfa847286a6cad097227d4864da1c97fe801012af0c26341"
  else
    version "5.0.101,0a7fa783-02e1-4785-b7b1-3c430f8825dc:764e53ff2f5722bc1b8bbc178fe25930"
    sha256 "280209019adf9b90480619d2150b818a572fe4e68c3e013d29cbb20fef5bc4bc"
  end

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-sdk-#{version.before_comma}-osx-x64.pkg"
  appcast "https://github.com/dotnet/core/releases.atom"
  name ".NET SDK"
  desc "Free, cross-platform, open-source developer platform"
  homepage "https://www.microsoft.com/net/core#macos"

  conflicts_with cask: [
    "dotnet",
    "dotnet-preview",
    "dotnet-sdk-preview",
  ]
  depends_on macos: ">= :sierra"

  pkg "dotnet-sdk-#{version.before_comma}-osx-x64.pkg"
  binary "/usr/local/share/dotnet/dotnet"

  uninstall pkgutil: [
    "com.microsoft.dotnet.*",
    "com.microsoft.netstandard.pack.targeting.*",
  ],
            delete:  [
              "/etc/paths.d/dotnet",
              "/etc/paths.d/dotnet-cli-tools",
            ]

  zap trash: [
    "~/.dotnet",
    "~/.nuget",
  ]
end
