cask "kotlin-native" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "1.5.31"

  url "https://github.com/JetBrains/kotlin/releases/download/v#{version}/kotlin-native-macos-#{arch}-#{version}.tar.gz",
      verified: "github.com/JetBrains/kotlin/"
  if Hardware::CPU.intel?
    sha256 "fde7224a8e04a6cd934ecbf55d4d51966f8a0668104f4316a76b3f38062d1ade"
  else
    sha256 "fbd005e360253e7d7ff1cd78b7cbbe34df0592812676deada6620a53d469d803"
  end

  name "Kotlin Native"
  desc "LLVM backend for Kotlin"
  homepage "https://kotlinlang.org/docs/reference/native-overview.html"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end

  conflicts_with formula: "kotlin"

  binary "kotlin-native-macos-#{arch}-#{version}/bin/cinterop"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/generate-platform"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/jsinterop"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/klib"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/konan-lldb"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/konanc"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/kotlinc"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/kotlinc-native"
  binary "kotlin-native-macos-#{arch}-#{version}/bin/run_konan"

  caveats do
    depends_on_java "6+"
  end
end
