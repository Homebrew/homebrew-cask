cask "kotlin-native" do
  version "1.4.30"
  sha256 "bf2c7b6246ad5f0d793c579e8ca075b79640a7dd96351857f882a01c830d35cf"

  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-prebuilt-macos-#{version}.tar.gz",
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

  binary "kotlin-native-prebuilt-macos-#{version}/bin/cinterop"
  binary "kotlin-native-prebuilt-macos-#{version}/bin/generate-platform"
  binary "kotlin-native-prebuilt-macos-#{version}/bin/jsinterop"
  binary "kotlin-native-prebuilt-macos-#{version}/bin/klib"
  binary "kotlin-native-prebuilt-macos-#{version}/bin/konan-lldb"
  binary "kotlin-native-prebuilt-macos-#{version}/bin/konanc"
  binary "kotlin-native-prebuilt-macos-#{version}/bin/kotlinc"
  binary "kotlin-native-prebuilt-macos-#{version}/bin/kotlinc-native"
  binary "kotlin-native-prebuilt-macos-#{version}/bin/run_konan"

  caveats do
    depends_on_java "6+"
  end
end
