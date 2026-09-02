cask "libcblite-community" do
  version "4.1.0"
  sha256 "8a90e9d7c0ad67e00659a9656be0f6704cc7c68e768451cc04bdb959586b807b"

  url "https://packages.couchbase.com/releases/couchbase-lite-c/#{version}/couchbase-lite-c-community-#{version}-macos.zip"
  name "Couchbase Lite (Community Edition)"
  desc "Couchbase Lite Libraries for C and C++ (Community Edition)"
  homepage "https://docs.couchbase.com/couchbase-lite/current/"

  livecheck do
    cask "libcblite"
  end

  conflicts_with cask: "libcblite"
  depends_on :macos

  artifact "libcblite-#{version}/include/cbl", target: "#{HOMEBREW_PREFIX}/include/cbl"
  artifact "libcblite-#{version}/include/cbl++", target: "#{HOMEBREW_PREFIX}/include/cbl++"
  artifact "libcblite-#{version}/include/fleece", target: "#{HOMEBREW_PREFIX}/include/fleece"
  artifact "libcblite-#{version}/lib/cmake/CouchbaseLite", target: "#{HOMEBREW_PREFIX}/lib/cmake/CouchbaseLite"
  artifact "libcblite-#{version}/lib/libcblite.#{version}.dylib", target: "#{HOMEBREW_PREFIX}/lib/libcblite.#{version}.dylib"

  postflight_steps do
    symlink "libcblite.#{version}.dylib", "{{HOMEBREW_PREFIX}}/lib/libcblite.#{version.major}.dylib",
            source_base: :relative, remove_on_uninstall: true
    symlink "libcblite.#{version.major}.dylib", "{{HOMEBREW_PREFIX}}/lib/libcblite.dylib",
            source_base: :relative, remove_on_uninstall: true
  end

  # No zap stanza required
end
