cask "kotlin-native" do
  version "1.4.32"
  sha256 "a55eb3c60bb9810360c5a992dca34328d806fe13f3bfc3120b49345f569fd3cc"

  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-macos-#{version}.tar.gz",
      verified: "github.com/JetBrains/kotlin/"
  name "Kotlin Native"
  desc "LLVM backend for Kotlin"
  homepage "https://kotlinlang.org/docs/reference/native-overview.html"

  livecheck do
    url :url
    strategy :git
    regex(/^v(\d+(?:\.\d+)*)$/)
  end

  conflicts_with formula: "kotlin"

  binary "kotlin-native-macos-#{version}/bin/cinterop"
  binary "kotlin-native-macos-#{version}/bin/generate-platform"
  binary "kotlin-native-macos-#{version}/bin/jsinterop"
  binary "kotlin-native-macos-#{version}/bin/klib"
  binary "kotlin-native-macos-#{version}/bin/konan-lldb"
  binary "kotlin-native-macos-#{version}/bin/konanc"
  binary "kotlin-native-macos-#{version}/bin/kotlinc"
  binary "kotlin-native-macos-#{version}/bin/kotlinc-native"
  binary "kotlin-native-macos-#{version}/bin/run_konan"

  caveats do
    depends_on_java "6+"
  end
end
