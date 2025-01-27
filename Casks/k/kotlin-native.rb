cask "kotlin-native" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.1.10"
  sha256 arm:   "b0ae655517c63add979462ac6668f3b1c00159d3fbf312dcb2e5752755facb3c",
         intel: "d7aebac0b5c4bf5adf7b76eac0b9c0cf79bee2e350c03ca93ef24c3cfadbe5cb"

  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-prebuilt-macos-#{arch}-#{version}.tar.gz",
      verified: "github.com/JetBrains/kotlin/"
  name "Kotlin Native"
  desc "LLVM backend for Kotlin"
  homepage "https://kotlinlang.org/docs/reference/native-overview.html"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with formula: "kotlin"

  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/cinterop"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/generate-platform"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/jsinterop"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/klib"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/konan-lldb"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/konanc"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/kotlinc-native"
  binary "kotlin-native-prebuilt-macos-#{arch}-#{version}/bin/run_konan"

  # No zap stanza required
  caveats do
    depends_on_java "6+"
  end
end
