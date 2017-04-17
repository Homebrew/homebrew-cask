cask 'scan-build' do
  version '277'
  sha256 '4afec20674895a9f05baa6f771e3e7e7f4953e608ad33f3b5ff4b97326d06588'

  url "http://clang-analyzer.llvm.org/downloads/checker-#{version}.tar.bz2"
  name 'scan-build'
  homepage 'http://clang-analyzer.llvm.org/scan-build.html'
  license :oss

  binary "checker-#{version}/scan-build"
  binary "checker-#{version}/scan-view"
  binary "checker-#{version}/set-xcode-analyzer"

  caveats do
    files_in_usr_local
  end
end
