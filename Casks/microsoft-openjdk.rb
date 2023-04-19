cask "microsoft-openjdk" do
  arch arm: "aarch64", intel: "x64"

  version "17.0.7"
  sha256 arm:   "13dff99a835edd054d5bfc5b37214c30e54f0700726e1041eca3ec615f8578dc",
         intel: "84a535e8a447736936d1aa1e118543fdbe03037b69682f7857d0ff7c621cba9c"

  url "https://aka.ms/download-jdk/microsoft-jdk-#{version}-macos-#{arch}.pkg",
      verified: "aka.ms/download-jdk/"
  name "Microsoft Build of OpenJDK"
  desc "OpenJDK distribution from Microsoft"
  homepage "https://microsoft.com/openjdk"

  livecheck do
    url "https://docs.microsoft.com/java/openjdk/download"
    regex(%r{href=.*?/microsoft[._-]jdk[._-]v?(\d+(?:\.\d+)+)[._-]macOS[._-]#{arch}\.pkg}i)
  end

  pkg "microsoft-jdk-#{version}-macOS-#{arch}.pkg"

  uninstall pkgutil: "com.microsoft.#{version.major}.jdk"
end
