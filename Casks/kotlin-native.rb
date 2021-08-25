cask "kotlin-native" do
  version "1.5.30"

  if Hardware::CPU.intel?
    sha256 "d11fadbf4c7b462795bbef48a2d7491c75f605551a3abccde7b0e22c60cbcaf1"

    url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-macos-x86_64-#{version}.tar.gz",
        verified: "github.com/JetBrains/kotlin/"
  else
    sha256 "e89ec954b635d9f8cb40f00275b180cfb6341e75dfd1783600c79132b13ee7b8"

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
