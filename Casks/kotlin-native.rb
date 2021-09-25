cask "kotlin-native" do
  version "1.5.31"

  if Hardware::CPU.intel?
    sha256 "fde7224a8e04a6cd934ecbf55d4d51966f8a0668104f4316a76b3f38062d1ade"

    url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-macos-x86_64-#{version}.tar.gz",
        verified: "github.com/JetBrains/kotlin/"
  else
    sha256 "fbd005e360253e7d7ff1cd78b7cbbe34df0592812676deada6620a53d469d803"

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
