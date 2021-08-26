cask "kotlin-native" do
  version "1.5.30"

  if Hardware::CPU.intel?
    sha256 "de7e9f9601e5f91aa44c0d8629da8779afaf60d0622287d67a61e72432277001"

    url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-macos-x86_64-#{version}.tar.gz",
        verified: "github.com/JetBrains/kotlin/"
  else
    sha256 "7c04408bb98b59b4acc1c5a2c8837350a8ef0262bc19795da42c103e6a8c6bd0"

    url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-macos-aarch64-#{version}.tar.gz",
        verified: "github.com/JetBrains/kotlin/"
  end

  name "Kotlin Native"
  desc "LLVM backend for Kotlin"
  homepage "https://kotlinlang.org/docs/reference/native-overview.html"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end

  conflicts_with formula: "kotlin"

  if Hardware::CPU.intel?
    binary "kotlin-native-macos-x86_64-#{version}/bin/cinterop"
    binary "kotlin-native-macos-x86_64-#{version}/bin/generate-platform"
    binary "kotlin-native-macos-x86_64-#{version}/bin/jsinterop"
    binary "kotlin-native-macos-x86_64-#{version}/bin/klib"
    binary "kotlin-native-macos-x86_64-#{version}/bin/konan-lldb"
    binary "kotlin-native-macos-x86_64-#{version}/bin/konanc"
    binary "kotlin-native-macos-x86_64-#{version}/bin/kotlinc"
    binary "kotlin-native-macos-x86_64-#{version}/bin/kotlinc-native"
    binary "kotlin-native-macos-x86_64-#{version}/bin/run_konan"
  else
    binary "kotlin-native-macos-aarch64-#{version}/bin/cinterop"
    binary "kotlin-native-macos-aarch64-#{version}/bin/generate-platform"
    binary "kotlin-native-macos-aarch64-#{version}/bin/jsinterop"
    binary "kotlin-native-macos-aarch64-#{version}/bin/klib"
    binary "kotlin-native-macos-aarch64-#{version}/bin/konan-lldb"
    binary "kotlin-native-macos-aarch64-#{version}/bin/konanc"
    binary "kotlin-native-macos-aarch64-#{version}/bin/kotlinc"
    binary "kotlin-native-macos-aarch64-#{version}/bin/kotlinc-native"
    binary "kotlin-native-macos-aarch64-#{version}/bin/run_konan"
  end

  caveats do
    depends_on_java "6+"
  end
end
