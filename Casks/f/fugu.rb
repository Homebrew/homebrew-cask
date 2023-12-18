cask "fugu" do
  version "1.2.1pre1"
  sha256 "3f96ac9c94516c100bab5fe03cc1571634955f15e1949d32d675b91f5058e328"

  url "https://downloads.sourceforge.net/fugussh/Unstable/fugu-#{version}/Fugu-#{version}.zip"
  name "Fugu"
  desc "Frontend for OpenSSH's sftp/scp tools"
  homepage "https://sourceforge.net/projects/fugussh/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Fugu.app"
end
