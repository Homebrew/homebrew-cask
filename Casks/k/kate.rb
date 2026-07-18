cask "kate" do
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "ff07273b1df04d323cb597c5c0da2b00f7f4f745078a9211836d7121d288ca1f",
         intel: "73dba1c5d8f15c9d552e80d908ba8d50ca6f2a8dfb91bb6555ace5e2f303c683"

  on_arm do
    version "26.04,12063"
  end
  on_intel do
    version "26.04,12063"
  end

  url "https://cdn.kde.org/ci-builds/utilities/kate/release-#{version.csv.first}/macos-#{arch}/kate-release_#{version.csv.first}-#{version.csv.second}-macos-clang-#{arch}.dmg",
      verified: "cdn.kde.org/ci-builds/utilities/kate/"
  name "Kate"
  desc "Multi-document editor by KDE"
  homepage "https://kate-editor.org/"

  livecheck do
    url "https://cdn.kde.org/ci-builds/utilities/kate/"
    regex(/href=.*?kate-release[._-]v?(\d+(?:[.-]\d+)+)[^"' >]*?[._-]#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      # Find the release directory with the highest version
      release_dir = page.scan(%r{href=["']?(release[._-]v?(\d+(?:\.\d+)*))/?["' >]}i)
                        .max_by { |match| Version.new(match[1]) }
                        &.first
      next unless release_dir

      # Fetch the release directory listing page
      builds_page = Homebrew::Livecheck::Strategy.page_content(
        "https://cdn.kde.org/ci-builds/utilities/kate/#{release_dir}/macos-#{arch}/",
      )
      next if (builds_content = builds_page[:content]).blank?

      builds_content.scan(regex).map { |match| match[0].tr("-", ",") }
    end
  end

  depends_on macos: :ventura

  app "kate.app"

  command_wrapper "kate.wrapper.sh",
                  target:  "kate",
                  content: <<~EOS
                    #!/bin/bash
                    exec '#{appdir}/Kate.app/Contents/MacOS/kate' "$@"
                  EOS

  zap trash: [
    "~/Library/Application Support/kate",
    "~/Library/Caches/kate",
    "~/Library/Preferences/org.kde.kate.plist",
    "~/Library/Saved Application State/org.kde.kate.savedState",
  ]
end
