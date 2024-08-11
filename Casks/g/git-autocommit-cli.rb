cask "git-autocommit-cli" do
  version "1.0.6"
  sha256 "26e66c6fbdcb048026b249c20b890e6a81b4426bc1d784568d9c5d8daadfda8d"

  url "https://github.com/Ibrahim-Haroon/git-autocommit-cli/releases/download/v#{version}/git-auto-commit-cli-#{version}-all.jar"
  name "Git AutoCommit CLI"
  desc "CLI tool that generates meaningful commit and PR messages"
  homepage "https://github.com/Ibrahim-Haroon/git-autocommit-cli"

  depends_on formula: "openjdk"

  jar "git-auto-commit-cli-#{version}-all.jar"

  binary "#{staged_path}/autocommit"

  preflight do
    FileUtils.write "#{staged_path}/autocommit", <<~EOS
      #!/bin/bash
      exec java -jar "#{staged_path}/git-auto-commit-cli-#{version}-all.jar" "$@"
    EOS
  end

  caveats "You need to have JVM to use this software."

  postflight do
    system_command "#{staged_path}/autocommit",
                   args: ["--test"],
                   must_succeed: true,
                   print_stdout: true
  end
end
