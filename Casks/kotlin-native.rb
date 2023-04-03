cask "kotlin-native" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.8.20"
  sha256 arm:   "becc0f4367ae8854f33546efff40767cc2cb227da0cd7935a9a6784e9a2736d2",
         intel: "e39e801eb8ae2e86a8fe0b5ee32535bf176fd284b6f6883a431cafbb27684055"

  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-macos-#{arch}-#{version}.tar.gz",
      verified: "github.com/JetBrains/kotlin/"
  name "Kotlin Native"
  desc "LLVM backend for Kotlin"
  homepage "https://kotlinlang.org/docs/reference/native-overview.html"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with formula: "kotlin"

  binary "kotlin-native-macos-#{arch}-#{version}/bin/cinterop"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/generate-platform"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/jsinterop"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/klib"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/konan-lldb"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/konanc"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/kotlinc-native"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/run_konan"

  # No zap stanza required
  caveats do
    depends_on_java "6+"
  end
end
